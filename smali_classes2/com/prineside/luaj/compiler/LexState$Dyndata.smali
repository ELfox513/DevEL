.class Lcom/prineside/luaj/compiler/LexState$Dyndata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/compiler/LexState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dyndata"
.end annotation


# instance fields
.field public a:[Lcom/prineside/luaj/compiler/LexState$Vardesc;

.field public b:I

.field public c:[Lcom/prineside/luaj/compiler/LexState$Labeldesc;

.field public d:I

.field public e:[Lcom/prineside/luaj/compiler/LexState$Labeldesc;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->b:I

    iput v0, p0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->d:I

    iput v0, p0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->f:I

    return-void
.end method
