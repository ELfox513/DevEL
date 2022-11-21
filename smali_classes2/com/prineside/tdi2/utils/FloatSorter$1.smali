.class Lcom/prineside/tdi2/utils/FloatSorter$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/utils/FloatSorter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool<",
        "Lcom/prineside/tdi2/utils/FloatSorter$Entity;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/prineside/tdi2/utils/FloatSorter;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/utils/FloatSorter;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/utils/FloatSorter$1;->b:Lcom/prineside/tdi2/utils/FloatSorter;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Pool;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/prineside/tdi2/utils/FloatSorter$Entity;
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/utils/FloatSorter$Entity;

    invoke-direct {v0}, Lcom/prineside/tdi2/utils/FloatSorter$Entity;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/utils/FloatSorter$1;->c()Lcom/prineside/tdi2/utils/FloatSorter$Entity;

    move-result-object v0

    return-object v0
.end method
