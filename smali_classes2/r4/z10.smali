.class public final Lr4/z10;
.super Lr4/o20;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable;

.field public final b:Landroid/net/Uri;

.field public final d:D

.field public final k:I

.field public final p:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V
    .locals 0

    invoke-direct {p0}, Lr4/o20;-><init>()V

    iput-object p1, p0, Lr4/z10;->a:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lr4/z10;->b:Landroid/net/Uri;

    iput-wide p3, p0, Lr4/z10;->d:D

    iput p5, p0, Lr4/z10;->k:I

    iput p6, p0, Lr4/z10;->p:I

    return-void
.end method


# virtual methods
.method public final a()Lf4/a;
    .locals 1

    iget-object v0, p0, Lr4/z10;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lr4/z10;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lr4/z10;->k:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lr4/z10;->p:I

    return v0
.end method

.method public final e()D
    .locals 2

    iget-wide v0, p0, Lr4/z10;->d:D

    return-wide v0
.end method
