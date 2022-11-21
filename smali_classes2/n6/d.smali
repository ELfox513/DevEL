.class public final Ln6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln6/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lm6/b<",
        "Ln6/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ll6/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll6/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ll6/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll6/g<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ll6/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll6/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ln6/d$b;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ll6/e<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ll6/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public c:Ll6/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll6/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln6/a;

    invoke-direct {v0}, Ln6/a;-><init>()V

    sput-object v0, Ln6/d;->e:Ll6/e;

    new-instance v0, Ln6/b;

    invoke-direct {v0}, Ln6/b;-><init>()V

    sput-object v0, Ln6/d;->f:Ll6/g;

    new-instance v0, Ln6/c;

    invoke-direct {v0}, Ln6/c;-><init>()V

    sput-object v0, Ln6/d;->g:Ll6/g;

    new-instance v0, Ln6/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln6/d$b;-><init>(Ln6/d$a;)V

    sput-object v0, Ln6/d;->h:Ln6/d$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ln6/d;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ln6/d;->b:Ljava/util/Map;

    sget-object v0, Ln6/d;->e:Ll6/e;

    iput-object v0, p0, Ln6/d;->c:Ll6/e;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln6/d;->d:Z

    const-class v0, Ljava/lang/String;

    sget-object v1, Ln6/d;->f:Ll6/g;

    invoke-virtual {p0, v0, v1}, Ln6/d;->p(Ljava/lang/Class;Ll6/g;)Ln6/d;

    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Ln6/d;->g:Ll6/g;

    invoke-virtual {p0, v0, v1}, Ln6/d;->p(Ljava/lang/Class;Ll6/g;)Ln6/d;

    const-class v0, Ljava/util/Date;

    sget-object v1, Ln6/d;->h:Ln6/d$b;

    invoke-virtual {p0, v0, v1}, Ln6/d;->p(Ljava/lang/Class;Ll6/g;)Ln6/d;

    return-void
.end method

.method public static synthetic b(Ljava/lang/Object;Ll6/f;)V
    .locals 0

    invoke-static {p0, p1}, Ln6/d;->l(Ljava/lang/Object;Ll6/f;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Ll6/h;)V
    .locals 0

    invoke-static {p0, p1}, Ln6/d;->m(Ljava/lang/String;Ll6/h;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/Boolean;Ll6/h;)V
    .locals 0

    invoke-static {p0, p1}, Ln6/d;->n(Ljava/lang/Boolean;Ll6/h;)V

    return-void
.end method

.method public static synthetic e(Ln6/d;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Ln6/d;->a:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic f(Ln6/d;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Ln6/d;->b:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic g(Ln6/d;)Ll6/e;
    .locals 0

    iget-object p0, p0, Ln6/d;->c:Ll6/e;

    return-object p0
.end method

.method public static synthetic h(Ln6/d;)Z
    .locals 0

    iget-boolean p0, p0, Ln6/d;->d:Z

    return p0
.end method

.method public static synthetic l(Ljava/lang/Object;Ll6/f;)V
    .locals 2

    new-instance p1, Ll6/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find encoder for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ll6/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic m(Ljava/lang/String;Ll6/h;)V
    .locals 0

    invoke-interface {p1, p0}, Ll6/h;->d(Ljava/lang/String;)Ll6/h;

    return-void
.end method

.method public static synthetic n(Ljava/lang/Boolean;Ll6/h;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, p0}, Ll6/h;->e(Z)Ll6/h;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Class;Ll6/e;)Lm6/b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ln6/d;->o(Ljava/lang/Class;Ll6/e;)Ln6/d;

    move-result-object p1

    return-object p1
.end method

.method public i()Ll6/a;
    .locals 1

    new-instance v0, Ln6/d$a;

    invoke-direct {v0, p0}, Ln6/d$a;-><init>(Ln6/d;)V

    return-object v0
.end method

.method public j(Lm6/a;)Ln6/d;
    .locals 0

    invoke-interface {p1, p0}, Lm6/a;->a(Lm6/b;)V

    return-object p0
.end method

.method public k(Z)Ln6/d;
    .locals 0

    iput-boolean p1, p0, Ln6/d;->d:Z

    return-object p0
.end method

.method public o(Ljava/lang/Class;Ll6/e;)Ln6/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ll6/e<",
            "-TT;>;)",
            "Ln6/d;"
        }
    .end annotation

    iget-object v0, p0, Ln6/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Ln6/d;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public p(Ljava/lang/Class;Ll6/g;)Ln6/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ll6/g<",
            "-TT;>;)",
            "Ln6/d;"
        }
    .end annotation

    iget-object v0, p0, Ln6/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Ln6/d;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
