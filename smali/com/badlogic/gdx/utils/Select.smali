.class public Lcom/badlogic/gdx/utils/Select;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lcom/badlogic/gdx/utils/Select;


# instance fields
.field public a:Lcom/badlogic/gdx/utils/QuickSelect;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/badlogic/gdx/utils/Select;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/utils/Select;->b:Lcom/badlogic/gdx/utils/Select;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Select;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Select;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Select;->b:Lcom/badlogic/gdx/utils/Select;

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/utils/Select;->b:Lcom/badlogic/gdx/utils/Select;

    return-object v0
.end method


# virtual methods
.method public final a([Ljava/lang/Object;Ljava/util/Comparator;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "TT;>;I)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    aget-object v2, p1, v0

    aget-object v3, p1, v1

    invoke-interface {p2, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final b([Ljava/lang/Object;Ljava/util/Comparator;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "TT;>;I)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    aget-object v2, p1, v0

    aget-object v3, p1, v1

    invoke-interface {p2, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public select([Ljava/lang/Object;Ljava/util/Comparator;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "TT;>;II)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/Select;->selectIndex([Ljava/lang/Object;Ljava/util/Comparator;II)I

    move-result p2

    aget-object p1, p1, p2

    return-object p1
.end method

.method public selectIndex([Ljava/lang/Object;Ljava/util/Comparator;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "TT;>;II)I"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p4, v0, :cond_4

    if-gt p3, p4, :cond_3

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1, p2, p4}, Lcom/badlogic/gdx/utils/Select;->b([Ljava/lang/Object;Ljava/util/Comparator;I)I

    move-result p1

    goto :goto_0

    :cond_0
    if-ne p3, p4, :cond_1

    invoke-virtual {p0, p1, p2, p4}, Lcom/badlogic/gdx/utils/Select;->a([Ljava/lang/Object;Ljava/util/Comparator;I)I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Select;->a:Lcom/badlogic/gdx/utils/QuickSelect;

    if-nez v0, :cond_2

    new-instance v0, Lcom/badlogic/gdx/utils/QuickSelect;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/QuickSelect;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Select;->a:Lcom/badlogic/gdx/utils/QuickSelect;

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Select;->a:Lcom/badlogic/gdx/utils/QuickSelect;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/QuickSelect;->select([Ljava/lang/Object;Ljava/util/Comparator;II)I

    move-result p1

    :goto_0
    return p1

    :cond_3
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Kth rank is larger than size. k: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "cannot select from empty array (size < 1)"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
