.class public final enum Lcom/badlogic/gdx/Files$FileType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/Files$FileType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Absolute:Lcom/badlogic/gdx/Files$FileType;

.field public static final enum Classpath:Lcom/badlogic/gdx/Files$FileType;

.field public static final enum External:Lcom/badlogic/gdx/Files$FileType;

.field public static final enum Internal:Lcom/badlogic/gdx/Files$FileType;

.field public static final enum Local:Lcom/badlogic/gdx/Files$FileType;

.field public static final synthetic a:[Lcom/badlogic/gdx/Files$FileType;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/badlogic/gdx/Files$FileType;

    const-string v1, "Classpath"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Files$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    new-instance v1, Lcom/badlogic/gdx/Files$FileType;

    const-string v3, "Internal"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/Files$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    new-instance v3, Lcom/badlogic/gdx/Files$FileType;

    const-string v5, "External"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/badlogic/gdx/Files$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/badlogic/gdx/Files$FileType;->External:Lcom/badlogic/gdx/Files$FileType;

    new-instance v5, Lcom/badlogic/gdx/Files$FileType;

    const-string v7, "Absolute"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/badlogic/gdx/Files$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/badlogic/gdx/Files$FileType;->Absolute:Lcom/badlogic/gdx/Files$FileType;

    new-instance v7, Lcom/badlogic/gdx/Files$FileType;

    const-string v9, "Local"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/badlogic/gdx/Files$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/badlogic/gdx/Files$FileType;->Local:Lcom/badlogic/gdx/Files$FileType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/badlogic/gdx/Files$FileType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/badlogic/gdx/Files$FileType;->a:[Lcom/badlogic/gdx/Files$FileType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/Files$FileType;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/Files$FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/Files$FileType;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/Files$FileType;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Files$FileType;->a:[Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/Files$FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/Files$FileType;

    return-object v0
.end method
