.class public final Lz5/a$h;
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
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll6/e<",
        "Lz5/a0$e$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lz5/a$h;

.field public static final b:Ll6/d;

.field public static final c:Ll6/d;

.field public static final d:Ll6/d;

.field public static final e:Ll6/d;

.field public static final f:Ll6/d;

.field public static final g:Ll6/d;

.field public static final h:Ll6/d;

.field public static final i:Ll6/d;

.field public static final j:Ll6/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz5/a$h;

    invoke-direct {v0}, Lz5/a$h;-><init>()V

    sput-object v0, Lz5/a$h;->a:Lz5/a$h;

    const-string v0, "arch"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$h;->b:Ll6/d;

    const-string v0, "model"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$h;->c:Ll6/d;

    const-string v0, "cores"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$h;->d:Ll6/d;

    const-string v0, "ram"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$h;->e:Ll6/d;

    const-string v0, "diskSpace"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$h;->f:Ll6/d;

    const-string v0, "simulator"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$h;->g:Ll6/d;

    const-string v0, "state"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$h;->h:Ll6/d;

    const-string v0, "manufacturer"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$h;->i:Ll6/d;

    const-string v0, "modelClass"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$h;->j:Ll6/d;

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

    check-cast p1, Lz5/a0$e$c;

    check-cast p2, Ll6/f;

    invoke-virtual {p0, p1, p2}, Lz5/a$h;->b(Lz5/a0$e$c;Ll6/f;)V

    return-void
.end method

.method public b(Lz5/a0$e$c;Ll6/f;)V
    .locals 3

    sget-object v0, Lz5/a$h;->b:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$e$c;->b()I

    move-result v1

    invoke-interface {p2, v0, v1}, Ll6/f;->a(Ll6/d;I)Ll6/f;

    sget-object v0, Lz5/a$h;->c:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$e$c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lz5/a$h;->d:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$e$c;->c()I

    move-result v1

    invoke-interface {p2, v0, v1}, Ll6/f;->a(Ll6/d;I)Ll6/f;

    sget-object v0, Lz5/a$h;->e:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$e$c;->h()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ll6/f;->b(Ll6/d;J)Ll6/f;

    sget-object v0, Lz5/a$h;->f:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$e$c;->d()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ll6/f;->b(Ll6/d;J)Ll6/f;

    sget-object v0, Lz5/a$h;->g:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$e$c;->j()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Ll6/f;->c(Ll6/d;Z)Ll6/f;

    sget-object v0, Lz5/a$h;->h:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$e$c;->i()I

    move-result v1

    invoke-interface {p2, v0, v1}, Ll6/f;->a(Ll6/d;I)Ll6/f;

    sget-object v0, Lz5/a$h;->i:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$e$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lz5/a$h;->j:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$e$c;->g()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    return-void
.end method
