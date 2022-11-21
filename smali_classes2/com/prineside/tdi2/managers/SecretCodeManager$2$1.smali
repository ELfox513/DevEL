.class Lcom/prineside/tdi2/managers/SecretCodeManager$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/SecretCodeManager$2;->handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/prineside/tdi2/managers/SecretCodeManager$2;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/SecretCodeManager$2;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/SecretCodeManager$2$1;->b:Lcom/prineside/tdi2/managers/SecretCodeManager$2;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/SecretCodeManager$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SecretCodeManager$2$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "build"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/SecretCodeManager$2$1;->b:Lcom/prineside/tdi2/managers/SecretCodeManager$2;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/SecretCodeManager$2;->b:Lcom/prineside/tdi2/managers/SecretCodeManager;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/managers/SecretCodeManager;->isBuildCompatible(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SecretCodeManager$2$1;->b:Lcom/prineside/tdi2/managers/SecretCodeManager$2;

    iget-object v2, v1, Lcom/prineside/tdi2/managers/SecretCodeManager$2;->b:Lcom/prineside/tdi2/managers/SecretCodeManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/SecretCodeManager$2;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/prineside/tdi2/managers/SecretCodeManager;->b(Lcom/prineside/tdi2/managers/SecretCodeManager;Ljava/lang/String;)V

    const-string v1, "contents"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-static {v3}, Lcom/prineside/tdi2/ItemStack;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/ItemStack;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    iget v5, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v6, 0x1

    if-ge v4, v5, :cond_4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/ItemStack;

    const/4 v7, 0x0

    :goto_2
    iget v8, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v8, :cond_2

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v7}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v7

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v9

    invoke-static {v7, v9}, Lcom/prineside/tdi2/utils/PMath;->addWithoutOverflow(II)I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_3

    new-instance v6, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v6, v5}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/ItemStack;)V

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    new-instance v2, Lcom/prineside/tdi2/IssuedItems;

    sget-object v4, Lcom/prineside/tdi2/IssuedItems$IssueReason;->SECRET_CODE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v5

    invoke-direct {v2, v4, v5}, Lcom/prineside/tdi2/IssuedItems;-><init>(Lcom/prineside/tdi2/IssuedItems$IssueReason;I)V

    iget-object v4, v2, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SecretCodeManager$2$1;->b:Lcom/prineside/tdi2/managers/SecretCodeManager$2;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/SecretCodeManager$2;->a:Ljava/lang/String;

    iput-object v1, v2, Lcom/prineside/tdi2/IssuedItems;->secretCode:Ljava/lang/String;

    const-string v1, "message"

    const-string v4, "Success!"

    invoke-virtual {v0, v1, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/prineside/tdi2/IssuedItems;->secretCodeDescription:Ljava/lang/String;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0, v2, v6}, Lcom/prineside/tdi2/managers/ProgressManager;->addIssuedPrizes(Lcom/prineside/tdi2/IssuedItems;Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->showNewlyIssuedPrizesPopup()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "code"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/prineside/tdi2/managers/SecretCodeManager$2$1;->b:Lcom/prineside/tdi2/managers/SecretCodeManager$2;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/SecretCodeManager$2;->a:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "secret_code"

    invoke-interface {v0, v2, v1}, Lcom/prineside/tdi2/ActionResolver;->logCustomEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "code_is_deprecated"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Lcom/prineside/tdi2/managers/SecretCodeManager$2$1$1;

    invoke-direct {v2, p0, v0}, Lcom/prineside/tdi2/managers/SecretCodeManager$2$1$1;-><init>(Lcom/prineside/tdi2/managers/SecretCodeManager$2$1;Lcom/badlogic/gdx/utils/JsonValue;)V

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :goto_4
    return-void
.end method
