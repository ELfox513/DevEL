.class final Lcom/android/dx/dex/file/MixedItemSection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/file/MixedItemSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/dx/dex/file/OffsettedItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/dx/dex/file/OffsettedItem;Lcom/android/dx/dex/file/OffsettedItem;)I
    .locals 0

    invoke-virtual {p1}, Lcom/android/dx/dex/file/Item;->itemType()Lcom/android/dx/dex/file/ItemType;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/dx/dex/file/Item;->itemType()Lcom/android/dx/dex/file/ItemType;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/dx/dex/file/OffsettedItem;

    check-cast p2, Lcom/android/dx/dex/file/OffsettedItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/dx/dex/file/MixedItemSection$1;->compare(Lcom/android/dx/dex/file/OffsettedItem;Lcom/android/dx/dex/file/OffsettedItem;)I

    move-result p1

    return p1
.end method
