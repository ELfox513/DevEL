.class Lcom/esotericsoftware/kryo/util/Pool$3;
.super Ljava/util/ArrayDeque;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esotericsoftware/kryo/util/Pool;-><init>(ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayDeque<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/esotericsoftware/kryo/util/Pool;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/Pool;I)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/Pool$3;->b:Lcom/esotericsoftware/kryo/util/Pool;

    iput p2, p0, Lcom/esotericsoftware/kryo/util/Pool$3;->a:I

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    iget v1, p0, Lcom/esotericsoftware/kryo/util/Pool$3;->a:I

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method
