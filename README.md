# WealthWise
A Personal Finance Tracker that helps with understanding of multiple technologies on the front end.

> This is a [Next.js](https://nextjs.org/) project bootstrapped with [`create-next-app`](https://github.com/vercel/next.js/tree/canary/packages/create-next-app).

## Getting Started
Install the dependencies:

```bash
npm install
# or
yarn 
# or
pnpm install
```

Watch this video on how to setup supabase for your project
[https://www.duolearn.tech/](https://www.duolearn.tech/)

Setup your database with pre-defined schema, run the following commands
> Note: You need to do this only once

```bash
npx supabase login
```
The above command will ask you to hit "Enter", after that you will be redirected to a browser window where you will be asked to login to your supabase account.

```bash
npm run select:db
# or
yarn select:db
# or
pnpm select:db
```
This will ask you to select the supabase project

At last push the migration, meaning we have defined all the DB schema for you, so you will just update your supabase with the that schema
```bash
npm run migration:push
# or
yarn migration:push
# or
pnpm migration:push
```

Now, run the application:
```bash
npm run dev
# or
yarn dev
# or
pnpm dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `pages/index.js`. The page auto-updates as you edit the file.

[API routes](https://nextjs.org/docs/api-routes/introduction) can be accessed on [http://localhost:3000/api/hello](http://localhost:3000/api/hello). This endpoint can be edited in `pages/api/hello.js`.

The `pages/api` directory is mapped to `/api/*`. Files in this directory are treated as [API routes](https://nextjs.org/docs/api-routes/introduction) instead of React pages.

This project uses [`next/font`](https://nextjs.org/docs/basic-features/font-optimization) to automatically optimize and load Inter, a custom Google Font.

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js/) - your feedback and contributions are welcome!

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/deployment) for more details.
