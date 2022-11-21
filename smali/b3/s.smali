.class public final synthetic Lb3/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final a:Lb3/y;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final d:I

.field public final k:I

.field public final p:I


# direct methods
.method public constructor <init>(Lb3/y;Ljava/util/concurrent/atomic/AtomicInteger;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/s;->a:Lb3/y;

    iput-object p2, p0, Lb3/s;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p3, p0, Lb3/s;->d:I

    iput p4, p0, Lb3/s;->k:I

    iput p5, p0, Lb3/s;->p:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lb3/s;->a:Lb3/y;

    iget-object v1, p0, Lb3/s;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v2, p0, Lb3/s;->d:I

    iget v3, p0, Lb3/s;->k:I

    iget v4, p0, Lb3/s;->p:I

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lb3/y;->p(Ljava/util/concurrent/atomic/AtomicInteger;IIILandroid/content/DialogInterface;I)V

    return-void
.end method
