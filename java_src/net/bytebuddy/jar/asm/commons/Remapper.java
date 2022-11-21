package net.bytebuddy.jar.asm.commons;

import net.bytebuddy.jar.asm.ConstantDynamic;
import net.bytebuddy.jar.asm.Handle;
import net.bytebuddy.jar.asm.Type;
import net.bytebuddy.jar.asm.signature.SignatureReader;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
import net.bytebuddy.jar.asm.signature.SignatureWriter;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes.dex */
public abstract class Remapper {
    private Type mapType(Type type) {
        switch (type.getSort()) {
            case 9:
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < type.getDimensions(); i++) {
                    sb.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH);
                }
                sb.append(mapType(type.getElementType()).getDescriptor());
                return Type.getType(sb.toString());
            case 10:
                String map = map(type.getInternalName());
                return map != null ? Type.getObjectType(map) : type;
            case 11:
                return Type.getMethodType(mapMethodDesc(type.getDescriptor()));
            default:
                return type;
        }
    }

    @Deprecated
    public SignatureVisitor createRemappingSignatureAdapter(SignatureVisitor signatureVisitor) {
        return createSignatureRemapper(signatureVisitor);
    }

    public SignatureVisitor createSignatureRemapper(SignatureVisitor signatureVisitor) {
        return new SignatureRemapper(signatureVisitor, this);
    }

    public String map(String str) {
        return str;
    }

    public String mapAnnotationAttributeName(String str, String str2) {
        return str2;
    }

    public String mapDesc(String str) {
        return mapType(Type.getType(str)).getDescriptor();
    }

    public String mapFieldName(String str, String str2, String str3) {
        return str2;
    }

    public String mapInvokeDynamicMethodName(String str, String str2) {
        return str;
    }

    public String mapMethodName(String str, String str2, String str3) {
        return str2;
    }

    public String mapModuleName(String str) {
        return str;
    }

    public String mapPackageName(String str) {
        return str;
    }

    public String mapRecordComponentName(String str, String str2, String str3) {
        return str2;
    }

    public String[] mapTypes(String[] strArr) {
        String[] strArr2 = null;
        for (int i = 0; i < strArr.length; i++) {
            String mapType = mapType(strArr[i]);
            if (mapType != null) {
                if (strArr2 == null) {
                    strArr2 = (String[]) strArr.clone();
                }
                strArr2[i] = mapType;
            }
        }
        if (strArr2 != null) {
            return strArr2;
        }
        return strArr;
    }

    public String mapMethodDesc(String str) {
        if ("()V".equals(str)) {
            return str;
        }
        StringBuilder sb = new StringBuilder("(");
        for (Type type : Type.getArgumentTypes(str)) {
            sb.append(mapType(type).getDescriptor());
        }
        Type returnType = Type.getReturnType(str);
        if (returnType == Type.VOID_TYPE) {
            sb.append(")V");
        } else {
            sb.append(')');
            sb.append(mapType(returnType).getDescriptor());
        }
        return sb.toString();
    }

    public String mapSignature(String str, boolean z) {
        if (str == null) {
            return null;
        }
        SignatureReader signatureReader = new SignatureReader(str);
        SignatureWriter signatureWriter = new SignatureWriter();
        SignatureVisitor createSignatureRemapper = createSignatureRemapper(signatureWriter);
        if (z) {
            signatureReader.acceptType(createSignatureRemapper);
        } else {
            signatureReader.accept(createSignatureRemapper);
        }
        return signatureWriter.toString();
    }

    public Object mapValue(Object obj) {
        String mapMethodName;
        String mapMethodDesc;
        if (obj instanceof Type) {
            return mapType((Type) obj);
        }
        int i = 0;
        if (obj instanceof Handle) {
            Handle handle = (Handle) obj;
            if (handle.getTag() <= 4) {
                i = 1;
            }
            int tag = handle.getTag();
            String mapType = mapType(handle.getOwner());
            if (i != 0) {
                mapMethodName = mapFieldName(handle.getOwner(), handle.getName(), handle.getDesc());
            } else {
                mapMethodName = mapMethodName(handle.getOwner(), handle.getName(), handle.getDesc());
            }
            String str = mapMethodName;
            if (i != 0) {
                mapMethodDesc = mapDesc(handle.getDesc());
            } else {
                mapMethodDesc = mapMethodDesc(handle.getDesc());
            }
            return new Handle(tag, mapType, str, mapMethodDesc, handle.isInterface());
        } else if (obj instanceof ConstantDynamic) {
            ConstantDynamic constantDynamic = (ConstantDynamic) obj;
            int bootstrapMethodArgumentCount = constantDynamic.getBootstrapMethodArgumentCount();
            Object[] objArr = new Object[bootstrapMethodArgumentCount];
            while (i < bootstrapMethodArgumentCount) {
                objArr[i] = mapValue(constantDynamic.getBootstrapMethodArgument(i));
                i++;
            }
            String descriptor = constantDynamic.getDescriptor();
            return new ConstantDynamic(mapInvokeDynamicMethodName(constantDynamic.getName(), descriptor), mapDesc(descriptor), (Handle) mapValue(constantDynamic.getBootstrapMethod()), objArr);
        } else {
            return obj;
        }
    }

    public String mapInnerClassName(String str, String str2, String str3) {
        String mapType = mapType(str);
        if (mapType.contains("$")) {
            int lastIndexOf = mapType.lastIndexOf(36);
            do {
                lastIndexOf++;
                if (lastIndexOf >= mapType.length()) {
                    break;
                }
            } while (Character.isDigit(mapType.charAt(lastIndexOf)));
            return mapType.substring(lastIndexOf);
        }
        return str3;
    }

    public String mapType(String str) {
        if (str == null) {
            return null;
        }
        return mapType(Type.getObjectType(str)).getInternalName();
    }
}
