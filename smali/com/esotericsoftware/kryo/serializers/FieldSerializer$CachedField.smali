.class public abstract Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/FieldSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CachedField"
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Field;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Class;

.field public d:Lcom/esotericsoftware/kryo/Serializer;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Lcom/esotericsoftware/reflectasm/FieldAccess;

.field public j:I

.field public k:J

.field public l:I


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->f:Z

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->h:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->j:I

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->a:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->h:Z

    return-void
.end method

.method public abstract copy(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public getCanBeNull()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->e:Z

    return v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->a:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOptimizePositive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->g:Z

    return v0
.end method

.method public getSerializer()Lcom/esotericsoftware/kryo/Serializer;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->d:Lcom/esotericsoftware/kryo/Serializer;

    return-object v0
.end method

.method public getValueClass()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->c:Ljava/lang/Class;

    return-object v0
.end method

.method public getVariableLengthEncoding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->f:Z

    return v0
.end method

.method public abstract read(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V
.end method

.method public setCanBeNull(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->e:Z

    return-void
.end method

.method public setOptimizePositive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->g:Z

    return-void
.end method

.method public setSerializer(Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->d:Lcom/esotericsoftware/kryo/Serializer;

    return-void
.end method

.method public setValueClass(Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->c:Ljava/lang/Class;

    return-void
.end method

.method public setValueClass(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->c:Ljava/lang/Class;

    iput-object p2, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->d:Lcom/esotericsoftware/kryo/Serializer;

    return-void
.end method

.method public setVariableLengthEncoding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->f:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->b:Ljava/lang/String;

    return-object v0
.end method

.method public abstract write(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
.end method
