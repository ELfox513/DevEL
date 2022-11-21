.class public final Lr4/gs1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/ns1;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lr4/gs1;
    .locals 1

    invoke-static {}, Lr4/fs1;->a()Lr4/gs1;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lr4/ns1;

    sget-object v1, Lr4/gt2;->b:Lr4/gt2;

    sget-object v2, Lr4/gt2;->p:Lr4/gt2;

    const-string v3, "ttc"

    invoke-direct {v0, v3, v1, v2}, Lr4/ns1;-><init>(Ljava/lang/String;Lr4/gt2;Lr4/gt2;)V

    return-object v0
.end method
