.class public final Lz5/a$c;
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
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll6/e<",
        "Lz5/a0;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lz5/a$c;

.field public static final b:Ll6/d;

.field public static final c:Ll6/d;

.field public static final d:Ll6/d;

.field public static final e:Ll6/d;

.field public static final f:Ll6/d;

.field public static final g:Ll6/d;

.field public static final h:Ll6/d;

.field public static final i:Ll6/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz5/a$c;

    invoke-direct {v0}, Lz5/a$c;-><init>()V

    sput-object v0, Lz5/a$c;->a:Lz5/a$c;

    const-string v0, "sdkVersion"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$c;->b:Ll6/d;

    const-string v0, "gmpAppId"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$c;->c:Ll6/d;

    const-string v0, "platform"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$c;->d:Ll6/d;

    const-string v0, "installationUuid"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$c;->e:Ll6/d;

    const-string v0, "buildVersion"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$c;->f:Ll6/d;

    const-string v0, "displayVersion"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$c;->g:Ll6/d;

    const-string v0, "session"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$c;->h:Ll6/d;

    const-string v0, "ndkPayload"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$c;->i:Ll6/d;

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

    check-cast p1, Lz5/a0;

    check-cast p2, Ll6/f;

    invoke-virtual {p0, p1, p2}, Lz5/a$c;->b(Lz5/a0;Ll6/f;)V

    return-void
.end method

.method public b(Lz5/a0;Ll6/f;)V
    .locals 2

    sget-object v0, Lz5/a$c;->b:Ll6/d;

    invoke-virtual {p1}, Lz5/a0;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lz5/a$c;->c:Ll6/d;

    invoke-virtual {p1}, Lz5/a0;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lz5/a$c;->d:Ll6/d;

    invoke-virtual {p1}, Lz5/a0;->h()I

    move-result v1

    invoke-interface {p2, v0, v1}, Ll6/f;->a(Ll6/d;I)Ll6/f;

    sget-object v0, Lz5/a$c;->e:Ll6/d;

    invoke-virtual {p1}, Lz5/a0;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lz5/a$c;->f:Ll6/d;

    invoke-virtual {p1}, Lz5/a0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lz5/a$c;->g:Ll6/d;

    invoke-virtual {p1}, Lz5/a0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lz5/a$c;->h:Ll6/d;

    invoke-virtual {p1}, Lz5/a0;->j()Lz5/a0$e;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lz5/a$c;->i:Ll6/d;

    invoke-virtual {p1}, Lz5/a0;->g()Lz5/a0$d;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    return-void
.end method
