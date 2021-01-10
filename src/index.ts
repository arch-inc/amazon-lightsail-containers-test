import { createServer } from "http";

const server = createServer((req, res) => {
  res.setHeader("Content-Type", "application/json");
  res.write(JSON.stringify({
    message: "hello world!",
    success: req.url === "/"
  }));
  res.end();
});

server.listen(process.env.PORT || 3000);
