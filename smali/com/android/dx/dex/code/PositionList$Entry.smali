.class public Lcom/android/dx/dex/code/PositionList$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/code/PositionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field private final address:I

.field private final position:Lw1/w;


# direct methods
.method public constructor <init>(ILw1/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    iput p1, p0, Lcom/android/dx/dex/code/PositionList$Entry;->address:I

    iput-object p2, p0, Lcom/android/dx/dex/code/PositionList$Entry;->position:Lw1/w;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "position == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "address < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAddress()I
    .locals 1

    iget v0, p0, Lcom/android/dx/dex/code/PositionList$Entry;->address:I

    return v0
.end method

.method public getPosition()Lw1/w;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/PositionList$Entry;->position:Lw1/w;

    return-object v0
.end method
