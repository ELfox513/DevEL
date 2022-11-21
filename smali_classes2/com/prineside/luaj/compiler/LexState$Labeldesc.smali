.class Lcom/prineside/luaj/compiler/LexState$Labeldesc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/compiler/LexState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Labeldesc"
.end annotation


# instance fields
.field public a:Lcom/prineside/luaj/LuaString;

.field public b:I

.field public c:I

.field public d:S


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/LuaString;IIS)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->a:Lcom/prineside/luaj/LuaString;

    iput p2, p0, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->b:I

    iput p3, p0, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->c:I

    iput-short p4, p0, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->d:S

    return-void
.end method
