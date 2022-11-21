.class public final Lr4/gx1;
.super Lr4/jg0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lr4/jx1;


# direct methods
.method public constructor <init>(Lr4/jx1;)V
    .locals 0

    iput-object p1, p0, Lr4/gx1;->a:Lr4/jx1;

    invoke-direct {p0}, Lr4/jg0;-><init>()V

    return-void
.end method


# virtual methods
.method public final E4(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    iget-object v0, p0, Lr4/gx1;->a:Lr4/jx1;

    iget-object v0, v0, Lr4/jx1;->a:Lr4/vm0;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0, v1}, Lr4/vm0;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method public final M4(Lb3/g0;)V
    .locals 3

    iget-object v0, p0, Lr4/gx1;->a:Lr4/jx1;

    iget-object v0, v0, Lr4/jx1;->a:Lr4/vm0;

    new-instance v1, Lb3/f0;

    iget-object v2, p1, Lb3/g0;->a:Ljava/lang/String;

    iget p1, p1, Lb3/g0;->b:I

    invoke-direct {v1, v2, p1}, Lb3/f0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    return-void
.end method
