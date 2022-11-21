.class public Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/GameValueManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameValueEffect"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;
    }
.end annotation


# instance fields
.field public delta:D

.field public questId:Ljava/lang/String;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public researchType:Lcom/prineside/tdi2/enums/ResearchType;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public source:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

.field public trophyType:Lcom/prineside/tdi2/enums/TrophyType;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public type:Lcom/prineside/tdi2/enums/GameValueType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/enums/GameValueType;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    iput-wide p2, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->from(Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;)V

    return-void
.end method


# virtual methods
.method public from(Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;)V
    .locals 2

    iget-object v0, p1, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    iget-wide v0, p1, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    iput-wide v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    iget-object v0, p1, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->source:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->source:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    iget-object v0, p1, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    iget-object v0, p1, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->questId:Ljava/lang/String;

    iput-object p1, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->questId:Ljava/lang/String;

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    const-class v0, Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/enums/GameValueType;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    const-class v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->source:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    const-class v0, Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/enums/ResearchType;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    const-class v0, Lcom/prineside/tdi2/enums/TrophyType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/enums/TrophyType;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->questId:Ljava/lang/String;

    return-void
.end method

.method public sameAs(Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;)Z
    .locals 6

    iget-object v0, p1, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-wide v0, p1, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    iget-wide v3, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_1

    return v2

    :cond_1
    iget-object v0, p1, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->source:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->source:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    iget-object v0, p1, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    if-eq v0, v1, :cond_3

    return v2

    :cond_3
    iget-object v0, p1, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    if-eq v0, v1, :cond_4

    return v2

    :cond_4
    iget-object p1, p1, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->questId:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->questId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public setup(Lcom/prineside/tdi2/enums/GameValueType;DLcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    iput-wide p2, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    iput-object p4, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->source:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    const-string v1, "+"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->source:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (source: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->source:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " research: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " trophy: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->questId:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " quest: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->questId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    const-class v1, Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-wide v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeDouble(D)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->source:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    const-class v1, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    const-class v1, Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    const-class v1, Lcom/prineside/tdi2/enums/TrophyType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->questId:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
