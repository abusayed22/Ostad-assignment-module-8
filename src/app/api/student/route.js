import { PrismaClient } from '@prisma/client'
import { NextResponse } from 'next/server'


// Creating API for single student registration.
export async function POST(req,res) {
    try {
        // object from prisma client
        const prisma = new PrismaClient();
        // request data
        const reqData = await req.json();

        const res = await prisma.users.create({
            data: reqData
        })

        return NextResponse.json({status:'Success',data: res})
    } catch (e) {
        return NextResponse.json({status:'Faild!',message: e})
    }
}


// Creating API to delete a single student.
export async function DELETE(req,res) {
    try {
        
        const {searchParams}= new URL(req.url)
        const reqId = parseInt(searchParams.get('id'));

        // object from prisma client
        const prisma = new PrismaClient();

        const res = await prisma.users.delete({
            where:{id:reqId}
        })

        return NextResponse.json({status:'Delete Successfully',data: res})
    } catch (error) {
        return NextResponse.json({status:'Faild!',message: error})
    }
}


//  API needs to be created to update student information.
export async function PUT(req,res) {
    try {
        // object from prisma client
        const prisma = new PrismaClient();
        const {searchParams} = new URL(req.url)
        const reqId = parseInt(searchParams.get("id"));
        
        // request data
        const reqData =await req.json();
        

        const res = await prisma.users.update({
            where:{id:reqId},
            data: reqData
        })

        return NextResponse.json({status:'Success',data: res})
    } catch (error) {
        console.log(error)
        return NextResponse.json({status:'User update Faild!',message: error})
    }
}


// An API needs to be created to show the data of a single student.
export async function GET(req,res) {
    try {
         // object from prisma client
         const prisma = new PrismaClient();
         const {searchParams} = new URL(req.url);
         const reqId = parseInt(searchParams.get('id'));

         const res = await prisma.users.findUnique({
            where:{id:reqId}
         })

         return NextResponse.json({status:'Success',data: res})
    } catch (error) {
        return NextResponse.json({status:'User get data Faild!',message: error})
    }
}