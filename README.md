# Blog Saya

Blog pribadi saya, dibuat dengan [Hugo](https://gohugo.io/) — generator situs statis yang super cepat.

## Stack

- **Hugo** (extended) — generator situs statis
- **Tema Ananke** — tema Hugo yang bersih dan responsif
- **Hosting** — Cloudflare Pages (gratis, HTTPS otomatis, CDN global)
- **Custom domain** — dikelola via Cloudflare

## Menulis postingan baru

```bash
hugo new content/posts/judul-artikel.md
# edit file, ubah draft: true → draft: false
hugo server -D  # preview di localhost:1313
```

## Deploy

Push ke branch `main` di GitHub → Cloudflare Pages otomatis build & deploy.

```bash
git add .
git commit -m "post baru"
git push origin main
```

Live: `https://blog-saya.pages.dev` (atau custom domain)
