use actix_web::{HttpRequest, HttpServer, web, App};
use actix_files;

async fn index(req: HttpRequest) -> &'static str {
    println!("REQ: {:?}", req);
    "Hello function world!\n"
}


#[actix_rt::main]
async fn main() -> std::io::Result<()> {
    HttpServer::new(|| {
        App::new()
            .service(web::resource("/hello_lambda").to(|| async { "Hello lambda world!\n" }))
            .service(web::resource("/hello_function").to(index))
            .service(actix_files::Files::new("/", "./static/").index_file("index.html"))
            .service(web::scope("/random")
        .route("/", web::get().to(|| async { "42\n" })))
    })
    .bind("127.0.0.1:8080")?
    .run()
    .await
}
