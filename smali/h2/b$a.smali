.class public final Lh2/b$a;
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
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll6/e<",
        "Lh2/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lh2/b$a;

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

.field public static final m:Ll6/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh2/b$a;

    invoke-direct {v0}, Lh2/b$a;-><init>()V

    sput-object v0, Lh2/b$a;->a:Lh2/b$a;

    const-string v0, "sdkVersion"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$a;->b:Ll6/d;

    const-string v0, "model"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$a;->c:Ll6/d;

    const-string v0, "hardware"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$a;->d:Ll6/d;

    const-string v0, "device"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$a;->e:Ll6/d;

    const-string v0, "product"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$a;->f:Ll6/d;

    const-string v0, "osBuild"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$a;->g:Ll6/d;

    const-string v0, "manufacturer"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$a;->h:Ll6/d;

    const-string v0, "fingerprint"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$a;->i:Ll6/d;

    const-string v0, "locale"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$a;->j:Ll6/d;

    const-string v0, "country"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$a;->k:Ll6/d;

    const-string v0, "mccMnc"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$a;->l:Ll6/d;

    const-string v0, "applicationBuild"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$a;->m:Ll6/d;

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

    check-cast p1, Lh2/a;

    check-cast p2, Ll6/f;

    invoke-virtual {p0, p1, p2}, Lh2/b$a;->b(Lh2/a;Ll6/f;)V

    return-void
.end method

.method public b(Lh2/a;Ll6/f;)V
    .locals 2

    sget-object v0, Lh2/b$a;->b:Ll6/d;

    invoke-virtual {p1}, Lh2/a;->m()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lh2/b$a;->c:Ll6/d;

    invoke-virtual {p1}, Lh2/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lh2/b$a;->d:Ll6/d;

    invoke-virtual {p1}, Lh2/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lh2/b$a;->e:Ll6/d;

    invoke-virtual {p1}, Lh2/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lh2/b$a;->f:Ll6/d;

    invoke-virtual {p1}, Lh2/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lh2/b$a;->g:Ll6/d;

    invoke-virtual {p1}, Lh2/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lh2/b$a;->h:Ll6/d;

    invoke-virtual {p1}, Lh2/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lh2/b$a;->i:Ll6/d;

    invoke-virtual {p1}, Lh2/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lh2/b$a;->j:Ll6/d;

    invoke-virtual {p1}, Lh2/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lh2/b$a;->k:Ll6/d;

    invoke-virtual {p1}, Lh2/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lh2/b$a;->l:Ll6/d;

    invoke-virtual {p1}, Lh2/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lh2/b$a;->m:Ll6/d;

    invoke-virtual {p1}, Lh2/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    return-void
.end method
