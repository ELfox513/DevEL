.class public Lcom/prineside/tdi2/utils/FloatSorter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/utils/FloatSorter$Entity;
    }
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/prineside/tdi2/utils/FloatSorter$Entity;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Lcom/prineside/tdi2/utils/FloatSorter;


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/FloatSorter$Entity;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/prineside/tdi2/utils/FloatSorter$Entity;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/utils/a;

    invoke-direct {v0}, Lcom/prineside/tdi2/utils/a;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/utils/FloatSorter;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/utils/FloatSorter$Entity;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/utils/FloatSorter;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/prineside/tdi2/utils/FloatSorter$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/utils/FloatSorter$1;-><init>(Lcom/prineside/tdi2/utils/FloatSorter;)V

    iput-object v0, p0, Lcom/prineside/tdi2/utils/FloatSorter;->b:Lcom/badlogic/gdx/utils/Pool;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/utils/FloatSorter$Entity;Lcom/prineside/tdi2/utils/FloatSorter$Entity;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/prineside/tdi2/utils/FloatSorter;->c(Lcom/prineside/tdi2/utils/FloatSorter$Entity;Lcom/prineside/tdi2/utils/FloatSorter$Entity;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/utils/FloatSorter$Entity;Lcom/prineside/tdi2/utils/FloatSorter$Entity;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/utils/FloatSorter$Entity;->value:F

    iget p1, p1, Lcom/prineside/tdi2/utils/FloatSorter$Entity;->value:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/prineside/tdi2/utils/FloatSorter;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/utils/FloatSorter;->d:Lcom/prineside/tdi2/utils/FloatSorter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/prineside/tdi2/utils/FloatSorter;

    invoke-direct {v0}, Lcom/prineside/tdi2/utils/FloatSorter;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/utils/FloatSorter;->d:Lcom/prineside/tdi2/utils/FloatSorter;

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/utils/FloatSorter;->d:Lcom/prineside/tdi2/utils/FloatSorter;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;F)V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/utils/FloatSorter;->b()V

    iget-object v0, p0, Lcom/prineside/tdi2/utils/FloatSorter;->b:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/utils/FloatSorter$Entity;

    iput-object p1, v0, Lcom/prineside/tdi2/utils/FloatSorter$Entity;->object:Ljava/lang/Object;

    iput p2, v0, Lcom/prineside/tdi2/utils/FloatSorter$Entity;->value:F

    iget-object p1, p0, Lcom/prineside/tdi2/utils/FloatSorter;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/utils/FloatSorter;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "begin() has not been called yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public begin()V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/utils/FloatSorter;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/utils/FloatSorter;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/utils/FloatSorter;->c:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Previous sorting not finished, call end() before starting another one"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/utils/FloatSorter;->b()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/utils/FloatSorter;->a:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/utils/FloatSorter;->b:Lcom/badlogic/gdx/utils/Pool;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/utils/FloatSorter$Entity;

    aget-object v2, v2, v1

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iput-boolean v0, p0, Lcom/prineside/tdi2/utils/FloatSorter;->c:Z

    return-void
.end method

.method public sort()Lcom/badlogic/gdx/utils/Array;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/FloatSorter$Entity;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/prineside/tdi2/utils/FloatSorter;->b()V

    invoke-static {}, Lcom/badlogic/gdx/utils/Sort;->instance()Lcom/badlogic/gdx/utils/Sort;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/utils/FloatSorter;->a:Lcom/badlogic/gdx/utils/Array;

    sget-object v2, Lcom/prineside/tdi2/utils/FloatSorter;->COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/Sort;->sort(Lcom/badlogic/gdx/utils/Array;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/prineside/tdi2/utils/FloatSorter;->a:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method
