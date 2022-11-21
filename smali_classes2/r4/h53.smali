.class public final Lr4/h53;
.super Lr4/o33;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/o33<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final transient d:[Ljava/lang/Object;

.field public final transient k:I

.field public final transient p:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Lr4/o33;-><init>()V

    iput-object p1, p0, Lr4/h53;->d:[Ljava/lang/Object;

    iput p2, p0, Lr4/h53;->k:I

    iput p3, p0, Lr4/h53;->p:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lr4/h53;->p:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lr4/z03;->e(IILjava/lang/String;)I

    iget-object v0, p0, Lr4/h53;->d:[Ljava/lang/Object;

    add-int/2addr p1, p1

    iget v1, p0, Lr4/h53;->k:I

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lr4/h53;->p:I

    return v0
.end method
