.class public final Lr4/qg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/og;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lr4/dl;


# direct methods
.method public constructor <init>(Lr4/lg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lr4/lg;->P0:Lr4/dl;

    iput-object p1, p0, Lr4/qg;->c:Lr4/dl;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lr4/dl;->i(I)V

    invoke-virtual {p1}, Lr4/dl;->u()I

    move-result v0

    iput v0, p0, Lr4/qg;->a:I

    invoke-virtual {p1}, Lr4/dl;->u()I

    move-result p1

    iput p1, p0, Lr4/qg;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lr4/qg;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/qg;->c:Lr4/dl;

    invoke-virtual {v0}, Lr4/dl;->u()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final b()Z
    .locals 1

    iget v0, p0, Lr4/qg;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lr4/qg;->b:I

    return v0
.end method
