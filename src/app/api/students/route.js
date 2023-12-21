import { PrismaClient } from '@prisma/client'
import {NextResponse} from 'next/server'


export async function POST (req,res) {
    try{
        const prisma = new PrismaClient()
        const res = await prisma.users.createMany({
            data: [
                {
                    first_name: "hello",
                    last_name: "prisma",
                    age: "12",
                    grade: "A",
                    courses: "next js"
                },
                {
                    first_name: "hello",
                    last_name: "prisma",
                    age: "12",
                    grade: "A",
                    courses: "next js"
                }
            ]
        })
        
        return NextResponse.json({status:'Success',data: res})
    }catch(e) {
        return NextResponse.json({status:'Failed',message: e})
    }
}


//  API should be created to get all students together.
export async function GET(req,res) {
    try {
        // object from prisma client
        const prisma = new PrismaClient();
        const res = await prisma.users.findMany()

        return NextResponse.json({status:'Success',data: res})
    } catch (error) {
        return NextResponse.json({status:'Failed',message: error})
    }
}