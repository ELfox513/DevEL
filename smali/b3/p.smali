.class public final synthetic Lb3/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final a:Lb3/y;

.field public final b:I

.field public final d:I

.field public final k:I

.field public final p:I

.field public final q:I


# direct methods
.method public constructor <init>(Lb3/y;IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/p;->a:Lb3/y;

    iput p2, p0, Lb3/p;->b:I

    iput p3, p0, Lb3/p;->d:I

    iput p4, p0, Lb3/p;->k:I

    iput p5, p0, Lb3/p;->p:I

    iput p6, p0, Lb3/p;->q:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v0, p0, Lb3/p;->a:Lb3/y;

    iget v1, p0, Lb3/p;->b:I

    iget v2, p0, Lb3/p;->d:I

    iget v3, p0, Lb3/p;->k:I

    iget v4, p0, Lb3/p;->p:I

    iget v5, p0, Lb3/p;->q:I

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lb3/y;->q(IIIIILandroid/content/DialogInterface;I)V

    return-void
.end method
