.class Lcom/prineside/luaj/compiler/LexState$Priority;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/compiler/LexState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Priority"
.end annotation


# instance fields
.field public final a:B

.field public final b:B


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/prineside/luaj/compiler/LexState$Priority;->a:B

    int-to-byte p1, p2

    iput-byte p1, p0, Lcom/prineside/luaj/compiler/LexState$Priority;->b:B

    return-void
.end method
