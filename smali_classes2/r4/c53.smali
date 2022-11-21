.class public final Lr4/c53;
.super Lr4/o33;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/o33<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final p:Lr4/o33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/o33<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final transient d:[Ljava/lang/Object;

.field public final transient k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr4/c53;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lr4/c53;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lr4/c53;->p:Lr4/o33;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Lr4/o33;-><init>()V

    iput-object p1, p0, Lr4/c53;->d:[Ljava/lang/Object;

    iput p2, p0, Lr4/c53;->k:I

    return-void
.end method


# virtual methods
.method public final e()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/c53;->d:[Ljava/lang/Object;

    return-object v0
.end method

.method public final g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Lr4/c53;->k:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lr4/z03;->e(IILjava/lang/String;)I

    iget-object v0, p0, Lr4/c53;->d:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lr4/c53;->k:I

    return v0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m([Ljava/lang/Object;I)I
    .locals 3

    iget-object v0, p0, Lr4/c53;->d:[Ljava/lang/Object;

    iget v1, p0, Lr4/c53;->k:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lr4/c53;->k:I

    add-int/2addr p2, p1

    return p2
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lr4/c53;->k:I

    return v0
.end method
