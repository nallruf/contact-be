import supertest from 'supertest'
import { prismaClient } from '../src/application/database'
import { web } from '../src/application/web'
import { logger } from '../src/application/logging'

describe('POST /api/v1/users', function (){
    afterEach(async () => {
        await prismaClient.user.deleteMany({
            where:{
                username: 'zainal'
            }
        })
    })

    it('should can register new user', async () => {
        
        const result = await supertest(web)
            .post('/api/v1/users')
            .send({
                username: 'zainal',
                password: 'test123',
                name: 'zainal'
            });
        
        expect(result.status).toBe(200);
        expect(result.body.data.username).toBe('zainal');
        expect(result.body.data.password).toBeUndefined;
        expect(result.body.data.name).toBe('zainal');
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
            username: 'zainal',
            password: 'test123',
            name: 'zainal'
        });
    
        expect(result.status).toBe(200);
        expect(result.body.data.username).toBe('zainal');
        expect(result.body.data.password).toBeUndefined;
        expect(result.body.data.name).toBe('zainal');

        result = await supertest(web)
            .post('/api/v1/users')
            .send({
                username: 'zainal',
                password: 'test123',
                name: 'zainal'
            });

        logger.info(result.body)
        
        expect(result.status).toBe(400);
        expect(result.body.errors).toBeDefined();
    });
})