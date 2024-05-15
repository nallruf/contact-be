import supertest from 'supertest'
import { prismaClient } from '../src/application/database'
import { web } from '../src/application/web'
import { logger } from '../src/application/logging'
import { createTestUser, removeTestUser } from './test-util'
import { func } from 'joi'

describe('POST /api/v1/users', function (){
    afterEach(async () => {
        await removeTestUser()
    })

    it('should can register new user', async () => {
        
        const result = await supertest(web)
            .post('/api/v1/users')
            .send({
                username: 'test',
                password: 'test123',
                name: 'test'
            });
        
        expect(result.status).toBe(200);
        expect(result.body.data.username).toBe('test');
        expect(result.body.data.password).toBeUndefined;
        expect(result.body.data.name).toBe('test');
    });


    it('should reject if request is invalid', async () => {
        
        const result = await supertest(web)
            .post('/api/v1/users')
            .send({
                username: '',
                password: '',
                name: ''
            });

        logger.info(result.body)
        
        expect(result.status).toBe(400);
        expect(result.body.errors).toBeDefined();
    });

    it('should reject if username already registered', async () => {
        
        let result = await supertest(web)
        .post('/api/v1/users')
        .send({
            username: 'test',
            password: 'test123',
            name: 'test'
        });
    
        expect(result.status).toBe(200);
        expect(result.body.data.username).toBe('test');
        expect(result.body.data.password).toBeUndefined;
        expect(result.body.data.name).toBe('test');

        result = await supertest(web)
            .post('/api/v1/users')
            .send({
                username: 'test',
                password: 'test123',
                name: 'test'
            });

        logger.info(result.body)
        
        expect(result.status).toBe(400);
        expect(result.body.errors).toBeDefined();
    });

})

describe('POST /api/v1/users/login', function() {
    beforeEach(async () => {
        await createTestUser();
    });


    afterEach(async () => {
        await removeTestUser();
    });

    it('should can login', async () => {
        const result = await supertest(web)
            .post('/api/v1/users/login')
            .send({
                username: "test",
                password: "test123"
            });

        logger.info(result.body)

        expect(result.status).toBe(200);
        expect(result.body.data.token).toBeDefined();
        expect(result.body.data.token).not.toBe("test");
    });

    it('should reject login if request is invalid', async () => {
        const result = await supertest(web)
            .post('/api/v1/users/login')
            .send({
                username: "",
                password: ""
            });

        logger.info(result.body)

        expect(result.status).toBe(400);
        expect(result.body.errors).toBeDefined();
    });


    it('should reject login if password wrong', async () => {
        const result = await supertest(web)
            .post('/api/v1/users/login')
            .send({
                username: "test",
                password: "test1"
            });

        logger.info(result.body)

        expect(result.status).toBe(401);
        expect(result.body.errors).toBeDefined();
    });

    it('should reject login if username wrong', async () => {
        const result = await supertest(web)
            .post('/api/v1/users/login')
            .send({
                username: "test1",
                password: "test1"
            });

        logger.info(result.body)

        expect(result.status).toBe(401);
        expect(result.body.errors).toBeDefined();
    });



})

describe('GET /api/v1/users/curent', function () {
    beforeEach(async () => {
        await createTestUser();
    });


    afterEach(async () => {
        await removeTestUser();
    });

    it('should can get current user', async ()=> {
        const result = await supertest(web)
            .get('/api/v1/users/current')
            .set('Authorization', 'test');

        expect(result.status).toBe(200);
        expect(result.body.data.username).toBe("test");
        expect(result.body.data.name).toBe("test");
    });

    it('should reject if token is invalid', async ()=> {
        const result = await supertest(web)
            .get('/api/v1/users/current')
            .set('Authorization', 'test1');

        expect(result.status).toBe(401);
        expect(result.body.errors).toBeDefined();
    });
})