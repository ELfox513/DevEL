.class public final enum Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/jsonbeans/JsonValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

.field public static final enum array:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

.field public static final enum booleanValue:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

.field public static final enum doubleValue:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

.field public static final enum longValue:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

.field public static final enum nullValue:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

.field public static final enum object:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

.field public static final enum stringValue:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    const-string v1, "object"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->object:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    new-instance v1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    const-string v3, "array"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->array:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    new-instance v3, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    const-string v5, "stringValue"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->stringValue:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    new-instance v5, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    const-string v7, "doubleValue"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->doubleValue:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    new-instance v7, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    const-string v9, "longValue"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->longValue:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    new-instance v9, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    const-string v11, "booleanValue"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->booleanValue:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    new-instance v11, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    const-string v13, "nullValue"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->nullValue:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->a:[Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;
    .locals 1

    const-class v0, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    return-object p0
.end method

.method public static values()[Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;
    .locals 1

    sget-object v0, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->a:[Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v0}, [Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    return-object v0
.end method
