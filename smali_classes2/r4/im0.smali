.class public final Lr4/im0;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lr4/im0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public d:I

.field public k:Z

.field public p:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/km0;

    invoke-direct {v0}, Lr4/km0;-><init>()V

    sput-object v0, Lr4/im0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIZZ)V
    .locals 6

    const v1, 0xcbe6bb0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lr4/im0;-><init>(IIZZZ)V

    return-void
.end method

.method public constructor <init>(IIZZZ)V
    .locals 7

    if-eqz p3, :cond_0

    const-string p4, "0"

    goto :goto_0

    :cond_0
    const-string p4, "1"

    :goto_0
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x24

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "afma-sdk-a-v"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lr4/im0;-><init>(Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput-object p1, p0, Lr4/im0;->a:Ljava/lang/String;

    iput p2, p0, Lr4/im0;->b:I

    iput p3, p0, Lr4/im0;->d:I

    iput-boolean p4, p0, Lr4/im0;->k:Z

    iput-boolean p5, p0, Lr4/im0;->p:Z

    return-void
.end method

.method public static X0()Lr4/im0;
    .locals 7

    new-instance v6, Lr4/im0;

    const v1, 0xbdfcb8

    const v2, 0xbdfcb8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lr4/im0;-><init>(IIZZZ)V

    return-object v6
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lr4/im0;->a:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v0, p0, Lr4/im0;->b:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget v0, p0, Lr4/im0;->d:I

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, Lr4/im0;->k:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Lr4/im0;->p:Z

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
