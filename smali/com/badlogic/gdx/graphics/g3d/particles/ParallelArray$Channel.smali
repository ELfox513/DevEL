.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Channel"
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

.field public data:Ljava/lang/Object;

.field public id:I

.field public strideSize:I


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;ILjava/lang/Object;I)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->id:I

    iput p4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public varargs abstract add(I[Ljava/lang/Object;)V
.end method

.method public abstract setCapacity(I)V
.end method

.method public abstract swap(II)V
.end method
