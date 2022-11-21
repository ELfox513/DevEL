.class public final Lr4/b44;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lr4/j13;

.field public static final c:Lr4/j13;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3a

    invoke-static {v0}, Lr4/m03;->b(C)Lr4/m03;

    move-result-object v0

    invoke-static {v0}, Lr4/j13;->b(Lr4/m03;)Lr4/j13;

    move-result-object v0

    sput-object v0, Lr4/b44;->b:Lr4/j13;

    const/16 v0, 0x2a

    invoke-static {v0}, Lr4/m03;->b(C)Lr4/m03;

    move-result-object v0

    invoke-static {v0}, Lr4/j13;->b(Lr4/m03;)Lr4/j13;

    move-result-object v0

    sput-object v0, Lr4/b44;->c:Lr4/j13;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr4/b44;->a:Ljava/util/List;

    return-void
.end method
