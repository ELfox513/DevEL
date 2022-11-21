.class public Lj1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj1/d$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lj1/d;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Lj1/k;)V
    .locals 0

    invoke-direct {p0}, Lj1/d;-><init>()V

    return-void
.end method

.method public static e()Lj1/d$a;
    .locals 2

    new-instance v0, Lj1/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj1/d$a;-><init>(Lj1/k;)V

    return-object v0
.end method

.method public static synthetic f(Lj1/d;I)I
    .locals 0

    iput p1, p0, Lj1/d;->g:I

    return p1
.end method

.method public static synthetic g(Lj1/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lj1/d;->b:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic i(Lj1/d;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lj1/d;->h:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic j(Lj1/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lj1/d;->a:Z

    return p1
.end method

.method public static synthetic l(Lj1/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lj1/d;->c:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic m(Lj1/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lj1/d;->i:Z

    return p1
.end method

.method public static synthetic n(Lj1/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lj1/d;->f:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic q(Lj1/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lj1/d;->d:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic r(Lj1/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lj1/d;->e:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj1/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj1/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lj1/d;->g:I

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lj1/d;->i:Z

    return v0
.end method

.method public final h()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lj1/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj1/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Lj1/d;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lj1/d;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lj1/d;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    iget v0, p0, Lj1/d;->g:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lj1/d;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj1/d;->f:Ljava/lang/String;

    return-object v0
.end method
