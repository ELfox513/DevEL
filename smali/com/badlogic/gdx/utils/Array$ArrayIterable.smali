.class public Lcom/badlogic/gdx/utils/Array$ArrayIterable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Array;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Z

.field public d:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

.field public k:Lcom/badlogic/gdx/utils/Array$ArrayIterator;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/Array$ArrayIterable;-><init>(Lcom/badlogic/gdx/utils/Array;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->a:Lcom/badlogic/gdx/utils/Array;

    iput-boolean p2, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->b:Z

    return-void
.end method


# virtual methods
.method public iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array$ArrayIterator<",
            "TT;>;"
        }
    .end annotation

    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->a:Lcom/badlogic/gdx/utils/Array;

    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->b:Z

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array$ArrayIterator;-><init>(Lcom/badlogic/gdx/utils/Array;Z)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->d:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->a:Lcom/badlogic/gdx/utils/Array;

    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->b:Z

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array$ArrayIterator;-><init>(Lcom/badlogic/gdx/utils/Array;Z)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->d:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    new-instance v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->a:Lcom/badlogic/gdx/utils/Array;

    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->b:Z

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array$ArrayIterator;-><init>(Lcom/badlogic/gdx/utils/Array;Z)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->k:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->d:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iget-boolean v1, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->k:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iput v3, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->d:I

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->k:Z

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->k:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iput-boolean v3, v1, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->k:Z

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->k:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iput v3, v1, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->d:I

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->k:Z

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->k:Z

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    return-object v0
.end method
