.class public Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/TowerStatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TowerStat"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/prineside/tdi2/enums/TowerStatType;

.field public d:Lcom/badlogic/gdx/graphics/Color;

.field public e:Ljava/lang/String;

.field public unitsAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;Lcom/prineside/tdi2/enums/TowerStatType;)Lcom/prineside/tdi2/enums/TowerStatType;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->c:Lcom/prineside/tdi2/enums/TowerStatType;

    return-object p1
.end method

.method public static synthetic b(Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->b:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->a:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic d(Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->e:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic e(Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->d:Lcom/badlogic/gdx/graphics/Color;

    return-object p1
.end method


# virtual methods
.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->d:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getFormattedValue(FZ)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 4

    invoke-static {}, Lcom/prineside/tdi2/managers/TowerStatManager;->a()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-static {}, Lcom/prineside/tdi2/managers/TowerStatManager;->a()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    float-to-double v2, p1

    const/4 p1, 0x1

    invoke-static {v2, v3, p1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    if-eqz p2, :cond_0

    sget-object p1, Lcom/prineside/tdi2/managers/TowerStatManager$1;->a:[I

    iget-object p2, p0, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->c:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/16 p2, 0x2b

    const-string v0, "TIME_CHAR_SECOND"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Lcom/prineside/tdi2/managers/TowerStatManager;->b()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-static {}, Lcom/prineside/tdi2/managers/TowerStatManager;->b()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/prineside/tdi2/managers/TowerStatManager;->a()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/managers/TowerStatManager;->a()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-static {}, Lcom/prineside/tdi2/managers/TowerStatManager;->a()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/prineside/tdi2/managers/TowerStatManager;->b()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, Lcom/prineside/tdi2/managers/TowerStatManager;->b()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-static {}, Lcom/prineside/tdi2/managers/TowerStatManager;->b()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/prineside/tdi2/managers/TowerStatManager;->a()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/managers/TowerStatManager;->a()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-static {}, Lcom/prineside/tdi2/managers/TowerStatManager;->a()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/prineside/tdi2/managers/TowerStatManager;->b()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Lcom/prineside/tdi2/managers/TowerStatManager;->b()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-static {}, Lcom/prineside/tdi2/managers/TowerStatManager;->b()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/prineside/tdi2/managers/TowerStatManager;->a()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/managers/TowerStatManager;->a()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-static {}, Lcom/prineside/tdi2/managers/TowerStatManager;->a()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    const/16 p2, 0x78

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/prineside/tdi2/managers/TowerStatManager;->b()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/prineside/tdi2/managers/TowerStatManager;->a()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    const-string p2, "%"

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/prineside/tdi2/managers/TowerStatManager;->a()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/prineside/tdi2/managers/TowerStatManager;->a()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    const-string p2, "%/"

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcom/prineside/tdi2/managers/TowerStatManager;->a()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_0
    :goto_0
    invoke-static {}, Lcom/prineside/tdi2/managers/TowerStatManager;->a()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconDrawableAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/prineside/tdi2/enums/TowerStatType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->c:Lcom/prineside/tdi2/enums/TowerStatType;

    return-object v0
.end method
