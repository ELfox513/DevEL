.class public final Lh2/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll6/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll6/e<",
        "Lh2/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lh2/b$e;

.field public static final b:Ll6/d;

.field public static final c:Ll6/d;

.field public static final d:Ll6/d;

.field public static final e:Ll6/d;

.field public static final f:Ll6/d;

.field public static final g:Ll6/d;

.field public static final h:Ll6/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh2/b$e;

    invoke-direct {v0}, Lh2/b$e;-><init>()V

    sput-object v0, Lh2/b$e;->a:Lh2/b$e;

    const-string v0, "requestTimeMs"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$e;->b:Ll6/d;

    const-string v0, "requestUptimeMs"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$e;->c:Ll6/d;

    const-string v0, "clientInfo"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$e;->d:Ll6/d;

    const-string v0, "logSource"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$e;->e:Ll6/d;

    const-string v0, "logSourceName"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$e;->f:Ll6/d;

    const-string v0, "logEvent"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$e;->g:Ll6/d;

    const-string v0, "qosTier"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$e;->h:Ll6/d;

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

    check-cast p1, Lh2/m;

    check-cast p2, Ll6/f;

    invoke-virtual {p0, p1, p2}, Lh2/b$e;->b(Lh2/m;Ll6/f;)V

    return-void
.end method

.method public b(Lh2/m;Ll6/f;)V
    .locals 3

    sget-object v0, Lh2/b$e;->b:Ll6/d;

    invoke-virtual {p1}, Lh2/m;->g()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ll6/f;->b(Ll6/d;J)Ll6/f;

    sget-object v0, Lh2/b$e;->c:Ll6/d;

    invoke-virtual {p1}, Lh2/m;->h()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ll6/f;->b(Ll6/d;J)Ll6/f;

    sget-object v0, Lh2/b$e;->d:Ll6/d;

    invoke-virtual {p1}, Lh2/m;->b()Lh2/k;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lh2/b$e;->e:Ll6/d;

    invoke-virtual {p1}, Lh2/m;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lh2/b$e;->f:Ll6/d;

    invoke-virtual {p1}, Lh2/m;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lh2/b$e;->g:Ll6/d;

    invoke-virtual {p1}, Lh2/m;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lh2/b$e;->h:Ll6/d;

    invoke-virtual {p1}, Lh2/m;->f()Lh2/p;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    return-void
.end method
