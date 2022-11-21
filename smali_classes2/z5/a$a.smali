.class public final Lz5/a$a;
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
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll6/e<",
        "Lz5/a0$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lz5/a$a;

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

    new-instance v0, Lz5/a$a;

    invoke-direct {v0}, Lz5/a$a;-><init>()V

    sput-object v0, Lz5/a$a;->a:Lz5/a$a;

    const-string v0, "pid"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$a;->b:Ll6/d;

    const-string v0, "processName"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$a;->c:Ll6/d;

    const-string v0, "reasonCode"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$a;->d:Ll6/d;

    const-string v0, "importance"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$a;->e:Ll6/d;

    const-string v0, "pss"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$a;->f:Ll6/d;

    const-string v0, "rss"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$a;->g:Ll6/d;

    const-string v0, "timestamp"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$a;->h:Ll6/d;

    const-string v0, "traceFile"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$a;->i:Ll6/d;

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

    check-cast p1, Lz5/a0$a;

    check-cast p2, Ll6/f;

    invoke-virtual {p0, p1, p2}, Lz5/a$a;->b(Lz5/a0$a;Ll6/f;)V

    return-void
.end method

.method public b(Lz5/a0$a;Ll6/f;)V
    .locals 3

    sget-object v0, Lz5/a$a;->b:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$a;->c()I

    move-result v1

    invoke-interface {p2, v0, v1}, Ll6/f;->a(Ll6/d;I)Ll6/f;

    sget-object v0, Lz5/a$a;->c:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lz5/a$a;->d:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$a;->f()I

    move-result v1

    invoke-interface {p2, v0, v1}, Ll6/f;->a(Ll6/d;I)Ll6/f;

    sget-object v0, Lz5/a$a;->e:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$a;->b()I

    move-result v1

    invoke-interface {p2, v0, v1}, Ll6/f;->a(Ll6/d;I)Ll6/f;

    sget-object v0, Lz5/a$a;->f:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$a;->e()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ll6/f;->b(Ll6/d;J)Ll6/f;

    sget-object v0, Lz5/a$a;->g:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$a;->g()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ll6/f;->b(Ll6/d;J)Ll6/f;

    sget-object v0, Lz5/a$a;->h:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$a;->h()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ll6/f;->b(Ll6/d;J)Ll6/f;

    sget-object v0, Lz5/a$a;->i:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$a;->i()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    return-void
.end method
