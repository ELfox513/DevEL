.class public final Lr4/sy2;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lr4/sy2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public b:Lr4/pb4;

.field public d:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/ty2;

    invoke-direct {v0}, Lr4/ty2;-><init>()V

    sput-object v0, Lr4/sy2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput p1, p0, Lr4/sy2;->a:I

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/sy2;->b:Lr4/pb4;

    iput-object p2, p0, Lr4/sy2;->d:[B

    invoke-virtual {p0}, Lr4/sy2;->a()V

    return-void
.end method


# virtual methods
.method public final X0()Lr4/pb4;
    .locals 2

    iget-object v0, p0, Lr4/sy2;->b:Lr4/pb4;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lr4/sy2;->d:[B

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v1

    invoke-static {v0, v1}, Lr4/pb4;->y0([BLr4/bm3;)Lr4/pb4;

    move-result-object v0

    iput-object v0, p0, Lr4/sy2;->b:Lr4/pb4;

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/sy2;->d:[B
    :try_end_0
    .catch Lr4/bn3; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lr4/sy2;->a()V

    iget-object v0, p0, Lr4/sy2;->b:Lr4/pb4;

    return-object v0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lr4/sy2;->b:Lr4/pb4;

    if-nez v0, :cond_1

    iget-object v1, p0, Lr4/sy2;->d:[B

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lr4/sy2;->d:[B

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    iget-object v1, p0, Lr4/sy2;->d:[B

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    if-nez v0, :cond_6

    iget-object v0, p0, Lr4/sy2;->d:[B

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lr4/sy2;->a:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lr4/sy2;->d:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/sy2;->b:Lr4/pb4;

    invoke-virtual {v0}, Lr4/uk3;->t()[B

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Ly3/c;->g(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, p2}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
