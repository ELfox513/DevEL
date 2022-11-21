.class public final Lz5/a$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll6/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll6/e<",
        "Lz5/a0$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lz5/a$i;

.field public static final b:Ll6/d;

.field public static final c:Ll6/d;

.field public static final d:Ll6/d;

.field public static final e:Ll6/d;

.field public static final f:Ll6/d;

.field public static final g:Ll6/d;

.field public static final h:Ll6/d;

.field public static final i:Ll6/d;

.field public static final j:Ll6/d;

.field public static final k:Ll6/d;

.field public static final l:Ll6/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz5/a$i;

    invoke-direct {v0}, Lz5/a$i;-><init>()V

    sput-object v0, Lz5/a$i;->a:Lz5/a$i;

    const-string v0, "generator"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$i;->b:Ll6/d;

    const-string v0, "identifier"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$i;->c:Ll6/d;

    const-string v0, "startedAt"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$i;->d:Ll6/d;

    const-string v0, "endedAt"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$i;->e:Ll6/d;

    const-string v0, "crashed"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$i;->f:Ll6/d;

    const-string v0, "app"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$i;->g:Ll6/d;

    const-string v0, "user"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$i;->h:Ll6/d;

    const-string v0, "os"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$i;->i:Ll6/d;

    const-string v0, "device"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$i;->j:Ll6/d;

    const-string v0, "events"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$i;->k:Ll6/d;

    const-string v0, "generatorType"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$i;->l:Ll6/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lz5/a0$e;

    check-cast p2, Ll6/f;

    invoke-virtual {p0, p1, p2}, Lz5/a$i;->b(Lz5/a0$e;Ll6/f;)V

    return-void
.end method

.method public b(Lz5/a0$e;Ll6/f;)V
    .locals 3

    sget-object v0, Lz5/a$i;->b:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lz5/a$i;->c:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$e;->i()[B

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lz5/a$i;->d:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$e;->k()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ll6/f;->b(Ll6/d;J)Ll6/f;

    sget-object v0, Lz5/a$i;->e:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$e;->d()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lz5/a$i;->f:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$e;->m()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Ll6/f;->c(Ll6/d;Z)Ll6/f;

    sget-object v0, Lz5/a$i;->g:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$e;->b()Lz5/a0$e$a;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lz5/a$i;->h:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$e;->l()Lz5/a0$e$f;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lz5/a$i;->i:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$e;->j()Lz5/a0$e$e;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lz5/a$i;->j:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$e;->c()Lz5/a0$e$c;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lz5/a$i;->k:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$e;->e()Lz5/b0;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lz5/a$i;->l:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$e;->g()I

    move-result p1

    invoke-interface {p2, v0, p1}, Ll6/f;->a(Ll6/d;I)Ll6/f;

    return-void
.end method
