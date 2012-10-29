NodeJS TypeScript Webserver
==================

The project create a simple nodejs Webserver for hosting static files. The main purpose of this project is create a basic development environment for client TypeScript development. 

[TypeScript](http://www.typescriptlang.org) is a new language developed by Microsoft and bring many advanced feature like compile-time type check, Class and Module support. To use this language to develop JavaScript program, the `.ts` file must be compiled to JavaScript file by compiler `tsc`. You must call the compiler each time you modify a bit on the `ts` source code.

After search on the Internet I found a project by [niutech](https://github.com/niutech) called [TypeScript Compile](https://github.com/niutech/typescript-compile) which compile the ts file on-the-fly in the browser. It's very cool but I found it will be difficult to debug because the code is generated and added to HTML file by adding a `<script>` tag. 

Now you can use **NodeJS TypeScript Webserver** as a simple web server to develop TypeScript program. The Webserver takes the same way as TypeScript Compile but compile the ts code on-the-fly on backend!

It's very simple to use this Webserver, just run
   
    node <the directory you place the **NodeJS TypeScript Webserver** >/bin/FileServer.js
 
A Webserver will be launched on 0.0.0.0:808, you can run http://127.0.0.1:808 to visit the server now. The root directory of the site will be the directory you launch the server. Now when you download a `.ts` file from the server, the `.ts` file will be compile to JavaScript on-the-fly and the response will be the compiled code.

So you can just modify the `<script>` file from:

    <script src="./js/MyModule.js"></script>

To

    <script src="./js/MyModule.ts"></script>

And everything will be working the same like you compile the `.ts` by `tsc`.


Compile
----
To compile the **NodeJS TypeScript Webserver** yourself, TypeScript must be installed by npm:
    
    npm -g install typescript

You don't need to install this module if you just want to use this program as a static web server with on-the-fly ts compile support. But I'm strongly recommend to install the TypeScript for I think it's worth for everyone to try this new language (although it's still in early preview).


Demo
----
You can find the demo on directory `demo/` , the demos are copied from TypeScript source code and modify the script file from `.js` to `.ts`.

Note
----
This program is developed by TypeScript too :)


License
----------------

TypeScript is developed by Microsoft Corp. under Apache 2.0 License.

NodeJS TypeScript Webserver is released under Apache 2.0 License.
