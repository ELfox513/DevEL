.class public Lcom/badlogic/gdx/ai/pfa/PathSmootherRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TV;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public inputIndex:I

.field public isNew:Z

.field public outputIndex:I

.field public path:Lcom/badlogic/gdx/ai/pfa/SmoothableGraphPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/pfa/SmoothableGraphPath<",
            "TN;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/ai/pfa/PathSmootherRequest;->isNew:Z

    return-void
.end method


# virtual methods
.method public refresh(Lcom/badlogic/gdx/ai/pfa/SmoothableGraphPath;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/pfa/SmoothableGraphPath<",
            "TN;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/pfa/PathSmootherRequest;->path:Lcom/badlogic/gdx/ai/pfa/SmoothableGraphPath;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/pfa/PathSmootherRequest;->isNew:Z

    return-void
.end method
