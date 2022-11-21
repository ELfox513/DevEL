.class Lcom/prineside/tdi2/managers/NetworkManager$2;
.super Lcom/esotericsoftware/kryo/util/MapReferenceResolver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/NetworkManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/prineside/tdi2/managers/NetworkManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/NetworkManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/NetworkManager$2;->b:Lcom/prineside/tdi2/managers/NetworkManager;

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;-><init>()V

    return-void
.end method


# virtual methods
.method public getReadObject(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;->getReadObject(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the object by ref "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " of type "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetworkManager"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
