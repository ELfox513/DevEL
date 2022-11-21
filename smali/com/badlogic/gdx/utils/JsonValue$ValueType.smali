.class public final enum Lcom/badlogic/gdx/utils/JsonValue$ValueType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/JsonValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/utils/JsonValue$ValueType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lcom/badlogic/gdx/utils/JsonValue$ValueType;

.field public static final enum array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

.field public static final enum booleanValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

.field public static final enum doubleValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

.field public static final enum longValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

.field public static final enum nullValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

.field public static final enum object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

.field public static final enum stringValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    const-string v1, "object"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    new-instance v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    const-string v3, "array"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    new-instance v3, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    const-string v5, "stringValue"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->stringValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    new-instance v5, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    const-string v7, "doubleValue"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->doubleValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    new-instance v7, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    const-string v9, "longValue"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->longValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    new-instance v9, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    const-string v11, "booleanValue"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->booleanValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    new-instance v11, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    const-string v13, "nullValue"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->nullValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->a:[Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue$ValueType;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/utils/JsonValue$ValueType;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->a:[Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/utils/JsonValue$ValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-object v0
.end method
