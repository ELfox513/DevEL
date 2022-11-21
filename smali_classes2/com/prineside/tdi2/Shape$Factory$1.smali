.class Lcom/prineside/tdi2/Shape$Factory$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/Shape$Factory;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/prineside/tdi2/Shape$Factory;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/Shape$Factory;II)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/Shape$Factory$1;->b:Lcom/prineside/tdi2/Shape$Factory;

    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/utils/Pool;-><init>(II)V

    return-void
.end method


# virtual methods
.method public c()Lcom/prineside/tdi2/Shape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/Shape$Factory$1;->b:Lcom/prineside/tdi2/Shape$Factory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Shape$Factory;->a()Lcom/prineside/tdi2/Shape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Shape$Factory$1;->c()Lcom/prineside/tdi2/Shape;

    move-result-object v0

    return-object v0
.end method
