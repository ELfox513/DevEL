.class final Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/RecordSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecordComponent"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->b:Ljava/lang/Class;

    iput p3, p0, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->c:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->b:Ljava/lang/Class;

    return-object v0
.end method
