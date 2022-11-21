.class public final Lr4/rg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/og;


# instance fields
.field public final a:Lr4/dl;

.field public final b:I

.field public final c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Lr4/lg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lr4/lg;->P0:Lr4/dl;

    iput-object p1, p0, Lr4/rg;->a:Lr4/dl;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lr4/dl;->i(I)V

    invoke-virtual {p1}, Lr4/dl;->u()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lr4/rg;->c:I

    invoke-virtual {p1}, Lr4/dl;->u()I

    move-result p1

    iput p1, p0, Lr4/rg;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Lr4/rg;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lr4/rg;->a:Lr4/dl;

    invoke-virtual {v0}, Lr4/dl;->l()I

    move-result v0

    return v0

    :cond_0
    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lr4/rg;->a:Lr4/dl;

    invoke-virtual {v0}, Lr4/dl;->m()I

    move-result v0

    return v0

    :cond_1
    iget v0, p0, Lr4/rg;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lr4/rg;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lr4/rg;->a:Lr4/dl;

    invoke-virtual {v0}, Lr4/dl;->l()I

    move-result v0

    iput v0, p0, Lr4/rg;->e:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    :cond_2
    iget v0, p0, Lr4/rg;->e:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lr4/rg;->b:I

    return v0
.end method
