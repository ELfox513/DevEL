.class public final enum Lcom/badlogic/gdx/Net$Protocol;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/Net;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Protocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/Net$Protocol;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum TCP:Lcom/badlogic/gdx/Net$Protocol;

.field public static final synthetic a:[Lcom/badlogic/gdx/Net$Protocol;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/Net$Protocol;

    const-string v1, "TCP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Net$Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Net$Protocol;->TCP:Lcom/badlogic/gdx/Net$Protocol;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/badlogic/gdx/Net$Protocol;

    aput-object v0, v1, v2

    sput-object v1, Lcom/badlogic/gdx/Net$Protocol;->a:[Lcom/badlogic/gdx/Net$Protocol;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/Net$Protocol;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/Net$Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/Net$Protocol;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/Net$Protocol;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Net$Protocol;->a:[Lcom/badlogic/gdx/Net$Protocol;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/Net$Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/Net$Protocol;

    return-object v0
.end method
