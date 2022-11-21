.class public Lcom/badlogic/gdx/graphics/g3d/Environment;
.super Lcom/badlogic/gdx/graphics/g3d/Attributes;
.source "SourceFile"


# instance fields
.field public shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .locals 1

    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Environment;->add(Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Environment;->add(Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Environment;->add(Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    :goto_0
    return-object p0

    :cond_2
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Unknown light type"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .locals 2

    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;->Type:J

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;-><init>()V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    :cond_0
    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object p0
.end method

.method public add(Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .locals 2

    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;->Type:J

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;-><init>()V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    :cond_0
    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object p0
.end method

.method public add(Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .locals 2

    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;->Type:J

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;-><init>()V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    :cond_0
    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object p0
.end method

.method public add(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;",
            ">;)",
            "Lcom/badlogic/gdx/graphics/g3d/Environment;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/Environment;->add(Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs add([Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/Environment;->add(Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public remove(Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .locals 1

    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Environment;->remove(Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Environment;->remove(Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Environment;->remove(Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    :goto_0
    return-object p0

    :cond_2
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Unknown light type"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .locals 5

    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;->Type:J

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;

    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    iget-object p1, v2, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez p1, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->remove(J)V

    :cond_0
    return-object p0
.end method

.method public remove(Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .locals 5

    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;->Type:J

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;

    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    iget-object p1, v2, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez p1, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->remove(J)V

    :cond_0
    return-object p0
.end method

.method public remove(Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .locals 5

    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;->Type:J

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;

    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    iget-object p1, v2, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez p1, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->remove(J)V

    :cond_0
    return-object p0
.end method

.method public remove(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;",
            ">;)",
            "Lcom/badlogic/gdx/graphics/g3d/Environment;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/Environment;->remove(Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs remove([Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/Environment;->remove(Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
