.class Lcom/prineside/luaj/compiler/LexState$ConsControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/compiler/LexState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConsControl"
.end annotation


# instance fields
.field public a:Lcom/prineside/luaj/compiler/LexState$expdesc;

.field public b:Lcom/prineside/luaj/compiler/LexState$expdesc;

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-direct {v0}, Lcom/prineside/luaj/compiler/LexState$expdesc;-><init>()V

    iput-object v0, p0, Lcom/prineside/luaj/compiler/LexState$ConsControl;->a:Lcom/prineside/luaj/compiler/LexState$expdesc;

    return-void
.end method
