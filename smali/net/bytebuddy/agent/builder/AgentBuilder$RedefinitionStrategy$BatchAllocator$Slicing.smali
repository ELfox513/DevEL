.class public Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Slicing;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Slicing"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Slicing$SlicingIterable;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final batchAllocator:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;

.field private final maximum:I

.field private final minimum:I


# direct methods
.method public constructor <init>(IILnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Slicing;->minimum:I

    iput p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Slicing;->maximum:I

    iput-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Slicing;->batchAllocator:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;

    return-void
.end method

.method public static withMaximum(ILnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Slicing;->withinRange(IILnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;

    move-result-object p0

    return-object p0
.end method

.method public static withMinimum(ILnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;
    .locals 1

    const v0, 0x7fffffff

    invoke-static {p0, v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Slicing;->withinRange(IILnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;

    move-result-object p0

    return-object p0
.end method

.method public static withinRange(IILnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;
    .locals 2

    if-lez p0, :cond_1

    if-gt p0, p1, :cond_0

    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Slicing;

    invoke-direct {v0, p0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Slicing;-><init>(IILnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;)V

    return-object v0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Minimum must not be bigger than maximum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " >"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Minimum must be a positive number: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public batch(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Slicing$SlicingIterable;

    iget v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Slicing;->minimum:I

    iget v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Slicing;->maximum:I

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Slicing;->batchAllocator:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;

    invoke-interface {v3, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;->batch(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Slicing$SlicingIterable;-><init>(IILjava/lang/Iterable;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Slicing;->minimum:I

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Slicing;

    iget v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Slicing;->minimum:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Slicing;->maximum:I

    iget v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Slicing;->maximum:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Slicing;->batchAllocator:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Slicing;->batchAllocator:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Slicing;->minimum:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Slicing;->maximum:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator$Slicing;->batchAllocator:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
