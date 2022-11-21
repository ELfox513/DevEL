.class Lcom/prineside/tdi2/screens/ResearchesScreen$_ResearchManagerListener;
.super Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener$ResearchManagerListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/ResearchesScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_ResearchManagerListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/ResearchesScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/ResearchesScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen$_ResearchManagerListener;->a:Lcom/prineside/tdi2/screens/ResearchesScreen;

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener$ResearchManagerListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/ResearchesScreen;Lcom/prineside/tdi2/screens/ResearchesScreen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/ResearchesScreen$_ResearchManagerListener;-><init>(Lcom/prineside/tdi2/screens/ResearchesScreen;)V

    return-void
.end method


# virtual methods
.method public researchCompleted(Lcom/prineside/tdi2/Research;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/screens/ResearchesScreen$_ResearchManagerListener;->a:Lcom/prineside/tdi2/screens/ResearchesScreen;

    invoke-virtual {v0}, Lcom/prineside/tdi2/screens/ResearchesScreen;->updateStarsCount()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ResearchManager;->getMapMinX()I

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ResearchManager;->getMapMinY()I

    move-result v1

    iget v2, p1, Lcom/prineside/tdi2/Research;->x:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    iget p1, p1, Lcom/prineside/tdi2/Research;->y:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen$_ResearchManagerListener;->a:Lcom/prineside/tdi2/screens/ResearchesScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/ResearchesScreen;->h(Lcom/prineside/tdi2/screens/ResearchesScreen;)Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v1, v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->start()V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen$_ResearchManagerListener;->a:Lcom/prineside/tdi2/screens/ResearchesScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/ResearchesScreen;->i(Lcom/prineside/tdi2/screens/ResearchesScreen;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public researchStarted(Lcom/prineside/tdi2/Research;J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "research started: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ends in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ResearchesScreen"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen$_ResearchManagerListener;->a:Lcom/prineside/tdi2/screens/ResearchesScreen;

    invoke-virtual {p1}, Lcom/prineside/tdi2/screens/ResearchesScreen;->updateStarsCount()V

    return-void
.end method
