.class public final Lr4/u5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lr4/u5;

.field public static final g:Lr4/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/d3<",
            "Lr4/u5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lr4/t5;

.field public final c:Lr4/r5;

.field public final d:Lr4/y5;

.field public final e:Lr4/n5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/l5;

    invoke-direct {v0}, Lr4/l5;-><init>()V

    invoke-virtual {v0}, Lr4/l5;->c()Lr4/u5;

    move-result-object v0

    sput-object v0, Lr4/u5;->f:Lr4/u5;

    sget-object v0, Lr4/i5;->a:Lr4/d3;

    sput-object v0, Lr4/u5;->g:Lr4/d3;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lr4/n5;Lr4/t5;Lr4/r5;Lr4/y5;Lr4/s5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/u5;->a:Ljava/lang/String;

    iput-object p3, p0, Lr4/u5;->b:Lr4/t5;

    iput-object p4, p0, Lr4/u5;->c:Lr4/r5;

    iput-object p5, p0, Lr4/u5;->d:Lr4/y5;

    iput-object p2, p0, Lr4/u5;->e:Lr4/n5;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lr4/u5;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lr4/u5;

    iget-object v1, p0, Lr4/u5;->a:Ljava/lang/String;

    iget-object v3, p1, Lr4/u5;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lr4/u5;->e:Lr4/n5;

    iget-object v3, p1, Lr4/u5;->e:Lr4/n5;

    invoke-virtual {v1, v3}, Lr4/n5;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lr4/u5;->b:Lr4/t5;

    iget-object v3, p1, Lr4/u5;->b:Lr4/t5;

    invoke-static {v1, v3}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lr4/u5;->c:Lr4/r5;

    iget-object v3, p1, Lr4/u5;->c:Lr4/r5;

    invoke-static {v1, v3}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lr4/u5;->d:Lr4/y5;

    iget-object p1, p1, Lr4/u5;->d:Lr4/y5;

    invoke-static {v1, p1}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lr4/u5;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lr4/u5;->b:Lr4/t5;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lr4/t5;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lr4/u5;->c:Lr4/r5;

    invoke-virtual {v1}, Lr4/r5;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lr4/u5;->e:Lr4/n5;

    invoke-virtual {v1}, Lr4/n5;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lr4/u5;->d:Lr4/y5;

    invoke-virtual {v1}, Lr4/y5;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
