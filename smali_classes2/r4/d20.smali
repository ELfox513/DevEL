.class public final Lr4/d20;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lr4/d20;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Z

.field public final d:I

.field public final k:Z

.field public final p:I

.field public final q:Lr4/xy;

.field public final r:Z

.field public final s:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/e20;

    invoke-direct {v0}, Lr4/e20;-><init>()V

    sput-object v0, Lr4/d20;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZIZILr4/xy;ZI)V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput p1, p0, Lr4/d20;->a:I

    iput-boolean p2, p0, Lr4/d20;->b:Z

    iput p3, p0, Lr4/d20;->d:I

    iput-boolean p4, p0, Lr4/d20;->k:Z

    iput p5, p0, Lr4/d20;->p:I

    iput-object p6, p0, Lr4/d20;->q:Lr4/xy;

    iput-boolean p7, p0, Lr4/d20;->r:Z

    iput p8, p0, Lr4/d20;->s:I

    return-void
.end method

.method public constructor <init>(Lv2/e;)V
    .locals 9

    invoke-virtual {p1}, Lv2/e;->f()Z

    move-result v2

    invoke-virtual {p1}, Lv2/e;->b()I

    move-result v3

    invoke-virtual {p1}, Lv2/e;->e()Z

    move-result v4

    invoke-virtual {p1}, Lv2/e;->a()I

    move-result v5

    invoke-virtual {p1}, Lv2/e;->d()Lt2/w;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lr4/xy;

    invoke-virtual {p1}, Lv2/e;->d()Lt2/w;

    move-result-object v1

    invoke-direct {v0, v1}, Lr4/xy;-><init>(Lt2/w;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    const/4 v1, 0x4

    invoke-virtual {p1}, Lv2/e;->g()Z

    move-result v7

    invoke-virtual {p1}, Lv2/e;->c()I

    move-result v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lr4/d20;-><init>(IZIZILr4/xy;ZI)V

    return-void
.end method

.method public static X0(Lr4/d20;)Lg3/d;
    .locals 3

    new-instance v0, Lg3/d$a;

    invoke-direct {v0}, Lg3/d$a;-><init>()V

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lg3/d$a;->a()Lg3/d;

    move-result-object p0

    return-object p0

    :cond_0
    iget v1, p0, Lr4/d20;->a:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lr4/d20;->r:Z

    invoke-virtual {v0, v1}, Lg3/d$a;->d(Z)Lg3/d$a;

    iget v1, p0, Lr4/d20;->s:I

    invoke-virtual {v0, v1}, Lg3/d$a;->c(I)Lg3/d$a;

    :cond_2
    iget-object v1, p0, Lr4/d20;->q:Lr4/xy;

    if-eqz v1, :cond_3

    new-instance v2, Lt2/w;

    invoke-direct {v2, v1}, Lt2/w;-><init>(Lr4/xy;)V

    invoke-virtual {v0, v2}, Lg3/d$a;->g(Lt2/w;)Lg3/d$a;

    :cond_3
    iget v1, p0, Lr4/d20;->p:I

    invoke-virtual {v0, v1}, Lg3/d$a;->b(I)Lg3/d$a;

    :goto_0
    iget-boolean v1, p0, Lr4/d20;->b:Z

    invoke-virtual {v0, v1}, Lg3/d$a;->f(Z)Lg3/d$a;

    iget-boolean p0, p0, Lr4/d20;->k:Z

    invoke-virtual {v0, p0}, Lg3/d$a;->e(Z)Lg3/d$a;

    invoke-virtual {v0}, Lg3/d$a;->a()Lg3/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lr4/d20;->a:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-boolean v1, p0, Lr4/d20;->b:Z

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget v1, p0, Lr4/d20;->d:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-boolean v1, p0, Lr4/d20;->k:Z

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget v1, p0, Lr4/d20;->p:I

    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lr4/d20;->q:Lr4/xy;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-boolean p2, p0, Lr4/d20;->r:Z

    const/4 v1, 0x7

    invoke-static {p1, v1, p2}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget p2, p0, Lr4/d20;->s:I

    const/16 v1, 0x8

    invoke-static {p1, v1, p2}, Ly3/c;->l(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
