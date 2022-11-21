.class Lcom/prineside/luaj/compiler/InstructionPtr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[I

.field public final b:I


# direct methods
.method public constructor <init>([II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/compiler/InstructionPtr;->a:[I

    iput p2, p0, Lcom/prineside/luaj/compiler/InstructionPtr;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/compiler/InstructionPtr;->a:[I

    iget v1, p0, Lcom/prineside/luaj/compiler/InstructionPtr;->b:I

    aget v0, v0, v1

    return v0
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/compiler/InstructionPtr;->a:[I

    iget v1, p0, Lcom/prineside/luaj/compiler/InstructionPtr;->b:I

    aput p1, v0, v1

    return-void
.end method
