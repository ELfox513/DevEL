.class public final Lr4/kc3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ba3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/ba3<",
        "Lr4/g93;",
        "Lr4/g93;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lr4/kc3;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lr4/kc3;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lr4/g93;",
            ">;"
        }
    .end annotation

    const-class v0, Lr4/g93;

    return-object v0
.end method

.method public final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lr4/g93;",
            ">;"
        }
    .end annotation

    const-class v0, Lr4/g93;

    return-object v0
.end method

.method public final bridge synthetic c(Lr4/aa3;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lr4/jc3;

    invoke-direct {v0, p1}, Lr4/jc3;-><init>(Lr4/aa3;)V

    return-object v0
.end method
